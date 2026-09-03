.class public Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;
.super Ljava/lang/Object;
.source "GoogleAnalyticsTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager$SingleInstance;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;
    .locals 1

    .line 15
    sget-object v0, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    return-object v0
.end method


# virtual methods
.method public sendEvent(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public sendEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
