.class public Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;
.super Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;
.source "FeatureEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FeatureEvent"


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V

    return-void
.end method


# virtual methods
.method public onWindowStateChanged(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;->getFeatureGetter()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;->getService()Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;->getFeatureGetter()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;->getService()Lcom/zte/gameassist/aiagent/IGameAgent;

    move-result-object p0

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/zte/gameassist/aiagent/IGameAgent;->onWindowStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WARNING:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FeatureEvent"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
