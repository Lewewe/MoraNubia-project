.class Lcn/nubia/redmagickyi/achievement/AchievementFragment$2;
.super Ljava/lang/Object;
.source "AchievementFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/AchievementFragment;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$2;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$2;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->access$100(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$2;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->access$100(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalPoint()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$2;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->access$100(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$2;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->achievement_point:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
