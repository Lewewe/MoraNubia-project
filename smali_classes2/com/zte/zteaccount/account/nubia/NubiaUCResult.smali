.class public Lcom/zte/zteaccount/account/nubia/NubiaUCResult;
.super Ljava/lang/Object;
.source "NubiaUCResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaUCResult;->code:I

    return p0
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaUCResult;->response:Ljava/lang/Object;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaUCResult;->code:I

    return-void
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaUCResult;->response:Ljava/lang/Object;

    return-void
.end method
