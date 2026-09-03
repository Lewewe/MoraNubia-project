.class public Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AlarmActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

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

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->gravityMap:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

    return-object p0
.end method

.method private startAlphaAnim(Landroid/view/View;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 203
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private stopAlphaAnim(Landroid/view/View;)V
    .locals 0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public getCurrentSelected()I
    .locals 2

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

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

    .line 213
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

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

    .line 22
    check-cast p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;I)V

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

    .line 22
    check-cast p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;I)V
    .locals 6

    .line 125
    iput p2, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->index:I

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 127
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->gravityMap:Ljava/util/Map;

    iget v2, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->gravityMap:Ljava/util/Map;

    iget v3, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setGravityInner(I)V

    .line 131
    :cond_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 132
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$1;-><init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;Lcn/nubia/redmagickyi/skin/bean/MotionBeans;Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getProgress()I

    move-result v1

    iget-object v4, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 159
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_mojipeiwan_listbg:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 161
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_mojipeiwan_listbg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->startAlphaAnim(Landroid/view/View;)V

    .line 167
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 170
    :goto_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 172
    :cond_2
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_mojipeiwan_listbg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 174
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 176
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    :goto_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isCheckBoxCheck()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object p1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$2;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$2;-><init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 95
    const-string v1, "playing"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 96
    iget-object p3, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getProgress()I

    move-result p2

    .line 97
    iget-object p3, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getMax()I

    move-result p3

    if-lt p2, p3, :cond_1

    .line 98
    iget-object p2, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_mojipeiwan_listbg:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object p2, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 100
    iget-object p0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 102
    iget-object p0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p3, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_mojipeiwan_listbg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object p3, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object p3, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->startAlphaAnim(Landroid/view/View;)V

    .line 107
    iget-object p0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    iget-object p0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 109
    iget-object p0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemView:Landroid/view/View;

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

    .line 22
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;
    .locals 1

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->alarm_action_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 84
    new-instance p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->setIsRecyclable(Z)V

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

    .line 22
    check-cast p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->onViewDetachedFromWindow(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->gravityMap:Ljava/util/Map;

    iget v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->getGravity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public resetPlayState()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 61
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 63
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setSelected(Z)V

    .line 65
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setProgress(I)V

    .line 66
    const-string v2, "playing"

    invoke-virtual {p0, v1, v2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setActionItemOnclick(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

    return-void
.end method

.method public setPlayProgress(IIZ)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 52
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setProgress(I)V

    if-eqz p3, :cond_0

    .line 55
    const-string p2, "playing"

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
