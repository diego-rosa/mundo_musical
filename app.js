const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const handlebars = require('express-handlebars');
const app=express();
const urlencodeParser = bodyParser.urlencoded({extended:false});

//Conexão com o Banco de dados
 const sql=mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database: 'mundo_musical'
});

sql.query("use mundo_musical");

app.use('/img',express.static('img'));
app.use('/css',express.static('css'));
app.use('/js',express.static('js'));

//Template engine
app.engine("handlebars",handlebars({defaultLayout:'main'}));
app.set('view engine','handlebars');


//Rotas
app.get("/",function(req,res){
    res.render('index');
});

app.get("/inserir",function(req,res){
    res.render("inserir");
});

app.get("/select/:id?",function(req,res){
    if(!req.params.id){
        sql.query("select * from tbl_instrumentos order by id asc" , function(err,results,fields){
            res.render('select',{data:results});
        });
    }else{
        sql.query("select * from tbl_instrumentos where id=? order by id asc",[req.params.id],function(err,results,fields){
            res.render('select',{data:results});
        });
    }
});

app.post("/controllerForm",urlencodeParser,function(req,res){
    sql.query("insert into tbl_instrumentos values (?,?,?,?,?)",[req.body.id,req.body.tipo,req.body.marca,req.body.modelo,req.body.valor]);
    res.render('controllerForm');
});

app.get('/deletar/:id',function(req,res){
    sql.query("delete from tbl_instrumentos where id=?",[req.params.id]);
    res.render('deletar');
});
/*
app.get("/update/:id",function(req,res){
    res.render('update',{id:req.params.id});
});

app.post("/controllerUpdate",urlencodeParser,function(req,res){
    sql.query("update tbl_instrumentos set tipo=?,marca=?,modelo=?,valor=? where id=?",[req.body.tipo,req.body.marca,req.body.modelo,req.body.valor,req.body.id]);
    res.render('controllerUpdate');
});
*/

//Servidor iniciando
app.listen(3000,function(req,res){
    console.log('Servidor Executando em http://localhost:3000/');
});