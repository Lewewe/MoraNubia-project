.class public interface abstract Lcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;
.super Ljava/lang/Object;
.source "FeatureChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/feature/chat/FeatureChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IChatResponseCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;IZ)Z
.end method
