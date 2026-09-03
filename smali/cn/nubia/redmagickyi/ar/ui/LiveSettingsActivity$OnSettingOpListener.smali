.class public interface abstract Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;
.super Ljava/lang/Object;
.source "LiveSettingsActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSettingOpListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener$TAB;
    }
.end annotation


# static fields
.field public static final TAB_MOBILE:I = 0x0

.field public static final TAB_PC:I = 0x1


# virtual methods
.method public abstract updateAlpha(IF)V
.end method

.method public abstract updatePreviewImage(ILcn/nubia/redmagickyi/ar/beans/ARImageBeans;)V
.end method
