.class public Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AchievementViewHolder.java"


# instance fields
.field public ivAchievementHeader:Landroid/widget/ImageView;

.field public ivAchievementTaskIcon:Landroid/widget/ImageView;

.field public ivMask:Landroid/widget/ImageView;

.field public progressBarAchievementTask:Landroid/widget/ProgressBar;

.field public tvAchievementTaskName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_achievement_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivAchievementHeader:Landroid/widget/ImageView;

    .line 20
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_achievement_task_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivAchievementTaskIcon:Landroid/widget/ImageView;

    .line 21
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivMask:Landroid/widget/ImageView;

    .line 22
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achivement_task_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->tvAchievementTaskName:Landroid/widget/TextView;

    .line 23
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->progress_achievement_task:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->progressBarAchievementTask:Landroid/widget/ProgressBar;

    return-void
.end method
