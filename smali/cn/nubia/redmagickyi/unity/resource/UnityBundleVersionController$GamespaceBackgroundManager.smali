.class Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$GamespaceBackgroundManager;
.super Ljava/lang/Object;
.source "UnityBundleVersionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GamespaceBackgroundManager"
.end annotation


# static fields
.field private static final BG_RESTORE_CODE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 127
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$GamespaceBackgroundManager;->isNeedToRestoreSelected()Z

    move-result v0

    return v0
.end method

.method private static isNeedToRestoreSelected()Z
    .locals 3

    .line 132
    const-string v0, "pref_app_gamespace_bg_selected_restore_code"

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->access$300(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->access$400(Ljava/lang/String;I)V

    return v2
.end method
