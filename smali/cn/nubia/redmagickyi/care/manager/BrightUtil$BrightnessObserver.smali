.class public Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/manager/BrightUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnBrightnessChangeListener:Lcn/nubia/redmagickyi/care/manager/BrightUtil$OnBrightnessChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/redmagickyi/care/manager/BrightUtil$OnBrightnessChangeListener;)V
    .locals 0

    .line 96
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 97
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;->mOnBrightnessChangeListener:Lcn/nubia/redmagickyi/care/manager/BrightUtil$OnBrightnessChangeListener;

    .line 99
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;->register()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 118
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;->mOnBrightnessChangeListener:Lcn/nubia/redmagickyi/care/manager/BrightUtil$OnBrightnessChangeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 119
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/BrightUtil;->getSystemBrightness(Landroid/content/Context;)I

    move-result p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/care/manager/BrightUtil$OnBrightnessChangeListener;->onChange(I)V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/BrightUtil$BrightnessObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
