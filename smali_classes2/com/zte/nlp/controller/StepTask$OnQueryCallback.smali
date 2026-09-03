.class public interface abstract Lcom/zte/nlp/controller/StepTask$OnQueryCallback;
.super Ljava/lang/Object;
.source "AbstractNLPOfflineQueryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/nlp/controller/StepTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnQueryCallback"
.end annotation


# virtual methods
.method public abstract onError()V
.end method

.method public abstract onSuccess(Lcom/zte/nlp/model/NLPResponse;)V
.end method
