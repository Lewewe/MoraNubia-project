.class Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$7;
.super Ljava/lang/Object;
.source "AchievementDetailEffectController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->initView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$7;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$7;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$000(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$7;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$000(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;->onClicked()V

    :cond_0
    return-void
.end method
