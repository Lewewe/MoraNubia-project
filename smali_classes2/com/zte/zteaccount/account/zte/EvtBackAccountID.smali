.class public Lcom/zte/zteaccount/account/zte/EvtBackAccountID;
.super Ljava/lang/Object;
.source "EvtBackAccountID.java"


# instance fields
.field account:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field synType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/EvtBackAccountID;->account:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/zte/zteaccount/account/zte/EvtBackAccountID;->synType:I

    .line 19
    iput-object p3, p0, Lcom/zte/zteaccount/account/zte/EvtBackAccountID;->phone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/EvtBackAccountID;->account:Ljava/lang/String;

    return-object p0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/EvtBackAccountID;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public getSynType()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/zte/zteaccount/account/zte/EvtBackAccountID;->synType:I

    return p0
.end method
