.class Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;
.super Ljava/lang/Object;
.source "AchievementDetailFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$OnPlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isPlayEnd:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 3

    .line 83
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initView => onClicked, isPlayEnd = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;->isPlayEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;->isPlayEnd:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->onBackPress()Z

    :cond_0
    return-void
.end method

.method public onPlayBegin()V
    .locals 2

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initView => onPlayBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;->isPlayEnd:Z

    return-void
.end method

.method public onPlayEnd()V
    .locals 2

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initView => onPlayEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementDetailFragment$1;->isPlayEnd:Z

    return-void
.end method
