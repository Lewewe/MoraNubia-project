.class public Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Boolean"
.end annotation


# instance fields
.field private defValue:I

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->key:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->defValue:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefValue()I
    .locals 0

    .line 87
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->defValue:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->key:Ljava/lang/String;

    return-object p0
.end method
