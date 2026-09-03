.class public interface abstract Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;
.super Ljava/lang/Object;
.source "IFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IGetter"
.end annotation


# virtual methods
.method public abstract getService()Lcom/zte/gameassist/aiagent/IGameAgent;
.end method

.method public abstract registCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
.end method

.method public abstract unregistCallback(Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V
.end method
