.class public Lcn/nubia/redmagickyi/user/model/HttpRespond;
.super Ljava/lang/Object;
.source "HttpRespond.java"


# instance fields
.field private code:I

.field private data:Lcn/nubia/redmagickyi/user/account/AccountInfo;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 11
    iget p0, p0, Lcn/nubia/redmagickyi/user/model/HttpRespond;->code:I

    return p0
.end method

.method public getData()Lcn/nubia/redmagickyi/user/account/AccountInfo;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/model/HttpRespond;->data:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/model/HttpRespond;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcn/nubia/redmagickyi/user/model/HttpRespond;->code:I

    return-void
.end method

.method public setData(Lcn/nubia/redmagickyi/user/account/AccountInfo;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/model/HttpRespond;->data:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/model/HttpRespond;->message:Ljava/lang/String;

    return-void
.end method
