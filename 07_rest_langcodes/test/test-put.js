const chai = require('chai')
const chaiHttp = require('chai-http')
const server = require('../app')
const should = chai.should()

chai.use(chaiHttp)

it('should update a SINGLE lang on route /update PUT', (done) => {
  chai.request(server)
    .put('/update')
    .send("name=Saksa&code=de&id=4")
    .end(function(err, res){
      console.log(res.body)
      res.should.have.status(200)
      res.should.be.json
      res.body.should.be.a('object')
      res.body.should.have.property('id')
      res.body.should.have.property('code')
      res.body.should.have.property('name')
      res.body.code.should.equal('de')
      res.body.name.should.equal('Saksa')
      res.body.id.should.equal('4')
      done()
    })
})

