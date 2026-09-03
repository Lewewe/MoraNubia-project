.class public interface abstract Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OnSettingOpListener;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSettingOpListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OnSettingOpListener$Type;
    }
.end annotation


# static fields
.field public static final TYPE_VOLUME_AUDIO:I = 0x1

.field public static final TYPE_VOLUME_BGM:I = 0x2

.field public static final TYPE_VOLUME_MAIN:I


# virtual methods
.method public abstract onVolumeChanged(I)V
.end method
