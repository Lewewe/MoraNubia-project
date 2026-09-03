.class public Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "AchievementBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ivClose:Landroid/widget/ImageView;

.field private ivIcon:Landroid/widget/ImageView;

.field private ivIconBg:Landroid/widget/LinearLayout;

.field private progressBar:Landroid/widget/ProgressBar;

.field private task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

.field private tvBadgeWithProgress:Landroid/widget/LinearLayout;

.field private tvBadgeWithoutProNoObtain:Landroid/widget/LinearLayout;

.field private tvBadgeWithoutProObtain:Landroid/widget/LinearLayout;

.field private tvDesc:Landroid/widget/TextView;

.field private tvDescNoObtain:Landroid/widget/TextView;

.field private tvDescObtain:Landroid/widget/TextView;

.field private tvFromLevel:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvPoint:Landroid/widget/TextView;

.field private tvPointNoObtain:Landroid/widget/TextView;

.field private tvToLevel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private initData()V
    .locals 8

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    if-eqz v0, :cond_9

    .line 77
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconCompletePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementCompletedDetail()Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->ivIconBg:Landroid/widget/LinearLayout;

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_yonghuchengjiu_achievedialog:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconUndonePath()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementUndoneDetail()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementCompletedDetail()Ljava/lang/String;

    move-result-object v2

    .line 87
    :cond_1
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 88
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->ivIconBg:Landroid/widget/LinearLayout;

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_yonghuchengjiu_achievedialog:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->ivIconBg:Landroid/widget/LinearLayout;

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_yonghuchengjiu_achievedialog_nothaven:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 93
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_4

    .line 94
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v3

    if-le v3, v1, :cond_4

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementType()I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 96
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$string;->achievement_bar_desc_progress:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcn/nubia/redmagickyi/main/R$string;->achievement_name_level:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressNow()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_4
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvName:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "initData: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AchievementBarFragment"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->ivIcon:Landroid/widget/ImageView;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressNow()I

    move-result v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v0

    if-gt v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressNow()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 105
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithoutProObtain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithoutProNoObtain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->progressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->progressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressNow()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->achievement_badge_canobtain_point:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementPoint()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvFromLevel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->achievement_name_level:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvToLevel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->achievement_name_level:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 116
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithoutProObtain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithoutProNoObtain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvDescObtain:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    :cond_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithoutProObtain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithoutProNoObtain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvDescNoObtain:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvPointNoObtain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->achievement_badge_canobtain_point:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementPoint()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 0

    .line 35
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_achievement_bar:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 1

    .line 40
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->progress_achievement_bar:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 41
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_achievement_bar_icon:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->ivIcon:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_achievement_bar_bg:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->ivIconBg:Landroid/widget/LinearLayout;

    .line 43
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_achievement_bar_close:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->ivClose:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achivement_bar_name:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvName:Landroid/widget/TextView;

    .line 46
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achivement_bar_desc:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvDesc:Landroid/widget/TextView;

    .line 47
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achivement_bar_desc_obtained:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvDescObtain:Landroid/widget/TextView;

    .line 48
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achivement_bar_desc_noobtain:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvDescNoObtain:Landroid/widget/TextView;

    .line 49
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achivement_bar_point:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvPoint:Landroid/widget/TextView;

    .line 50
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achievement_from_level:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvFromLevel:Landroid/widget/TextView;

    .line 51
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achievement_to_level:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvToLevel:Landroid/widget/TextView;

    .line 52
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_achivement_bar_point_noobtain:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvPointNoObtain:Landroid/widget/TextView;

    .line 53
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->achievement_badge_withprogress:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithProgress:Landroid/widget/LinearLayout;

    .line 54
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->achievement_badge_withoutprogress_obtained:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithoutProObtain:Landroid/widget/LinearLayout;

    .line 55
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->achievement_badge_withoutprogress_noobtain:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->tvBadgeWithoutProNoObtain:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_achievement_bar_close:I

    if-ne p1, v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->onWindowAttributeUpdate(Landroid/view/Window;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, -0x2

    .line 62
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 63
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showDialog(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    const-string v0, "task"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->task:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 133
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->initData()V

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/AchievementBarFragment;->show()V

    return-void
.end method
