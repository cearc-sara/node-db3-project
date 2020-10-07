const db = require("../data/db-config")

module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update, 
    remove
}

function find() {
    return db("schemes")
}

function findById (id) {
    return db("schemes")
    .where({id})
    .first()
}

function findSteps(id) {
return db("steps")
.where("scheme_id", id)

}

function add(scheme) {
    return db("schemes")
        .insert(scheme, "id")
        .then(ids => {
            const id = ids[0]
            return findById(id)
        })
}

function addStep(step, id){

}

function update(changes, id){
    return db("schemes")
    .where({id})
    .update(changes)
}

function remove(id){
    return db("schemes")
    .where({id})
    .del()
}