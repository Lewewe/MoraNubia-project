.class public interface abstract Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;
.super Ljava/lang/Object;
.source "AchievementNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onLoadSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;Z)V
.end method

.method public abstract onReceiveError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onReceiveSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
.end method
