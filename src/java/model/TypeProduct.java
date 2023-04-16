/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER NITRO
 */
public class TypeProduct {
    private String idType,nameType;

    public TypeProduct() {
    }

    public TypeProduct(String idType, String nameType) {
        this.idType = idType;
        this.nameType = nameType;
    }

    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }

    public String getNameType() {
        return nameType;
    }

    public void setNameType(String nameType) {
        this.nameType = nameType;
    }

    @Override
    public String toString() {
        return "TypeProduct{" + "idType=" + idType + ", nameType=" + nameType + '}';
    }
    
}
