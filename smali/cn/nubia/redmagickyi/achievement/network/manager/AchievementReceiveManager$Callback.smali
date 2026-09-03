.class public interface abstract Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;
.super Ljava/lang/Object;
.source "AchievementReceiveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
.end method
