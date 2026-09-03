.class public interface abstract Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;
.super Ljava/lang/Object;
.source "AbstractNLPQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/nlp/manager/AbstractNLPQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/zte/aivoice/code/ErrorCode;)V
.end method

.method public abstract onSuccess(Lcom/zte/nlp/model/NLPResponse;)V
.end method
