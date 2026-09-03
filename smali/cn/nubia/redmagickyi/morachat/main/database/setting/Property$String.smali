.class public Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "String"
.end annotation


# instance fields
.field private defValue:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->key:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->defValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefValue()Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->defValue:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->key:Ljava/lang/String;

    return-object p0
.end method
