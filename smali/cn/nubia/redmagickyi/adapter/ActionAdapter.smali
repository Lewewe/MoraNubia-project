.class public Lcn/nubia/redmagickyi/adapter/ActionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/adapter/ActionAdapter$ActionClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private clickInterface:Lcn/nubia/redmagickyi/adapter/ActionAdapter$ActionClickInterface;

.field private gravityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/bean/MotionBeans;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/bean/MotionBeans;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->gravityMap:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/adapter/ActionAdapter;)Lcn/nubia/redmagickyi/adapter/ActionAdapter$ActionClickInterface;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/ActionAdapter$ActionClickInterface;

    return-object p0
.end method

.method private startAlphaAnim(Landroid/view/View;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 182
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private stopAlphaAnim(Landroid/view/View;)V
    .locals 0

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public getCurrentSelected()I
    .locals 2

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 197
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 20
    check-cast p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 20
    check-cast p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;I)V
    .locals 4

    .line 122
    iput p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->index:I

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 124
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->gravityMap:Ljava/util/Map;

    iget v2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->gravityMap:Ljava/util/Map;

    iget v3, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setGravityInner(I)V

    .line 128
    :cond_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 129
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/adapter/ActionAdapter$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter$1;-><init>(Lcn/nubia/redmagickyi/adapter/ActionAdapter;Lcn/nubia/redmagickyi/skin/bean/MotionBeans;Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_2

    .line 155
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getProgress()I

    move-result p2

    iget-object v3, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    if-lt p2, v3, :cond_1

    .line 156
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->skin_action_posture_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 158
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->skin_action_posture_list_playing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->startAlphaAnim(Landroid/view/View;)V

    .line 164
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getProgress()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    :goto_0
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 169
    :cond_2
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->skin_action_posture_list:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 171
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 173
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 92
    const-string v1, "playing"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 93
    iget-object p3, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getProgress()I

    move-result p2

    .line 94
    iget-object p3, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getMax()I

    move-result p3

    if-lt p2, p3, :cond_1

    .line 95
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->skin_action_posture_list:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 97
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object p3, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->skin_action_posture_list_playing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object p3, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object p3, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->startAlphaAnim(Landroid/view/View;)V

    .line 104
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 106
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->action_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 81
    new-instance p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->setIsRecyclable(Z)V

    return-object p1
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    check-cast p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->onViewDetachedFromWindow(Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->gravityMap:Ljava/util/Map;

    iget v1, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->getGravity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public resetPlayState()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 58
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 59
    iget-object v2, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 60
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setSelected(Z)V

    .line 62
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setProgress(I)V

    .line 63
    const-string v2, "playing"

    invoke-virtual {p0, v1, v2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setActionItemOnclick(Lcn/nubia/redmagickyi/adapter/ActionAdapter$ActionClickInterface;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/ActionAdapter$ActionClickInterface;

    return-void
.end method

.method public setPlayProgress(IIZ)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 49
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setProgress(I)V

    if-eqz p3, :cond_0

    .line 52
    const-string p2, "playing"

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
