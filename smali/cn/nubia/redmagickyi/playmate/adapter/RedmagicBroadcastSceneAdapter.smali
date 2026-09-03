.class public Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RedmagicBroadcastSceneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

.field private itemEnable:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
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
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->itemEnable:Z

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    return-object p0
.end method

.method private startAlphaAnim(Landroid/view/View;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private stopAlphaAnim(Landroid/view/View;)V
    .locals 0

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public getCurrentFocused()I
    .locals 2

    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

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

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public indexOfItem(Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;)I
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 22
    check-cast p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;I)V

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
    check-cast p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;I)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    .line 132
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->tvScene:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->tvScene:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 135
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->cbScene:Landroid/widget/CheckBox;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->cbScene:Landroid/widget/CheckBox;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;

    invoke-direct {v2, p0, v0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->cbScene:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;

    invoke-direct {v2, p0, v0, p2, p1}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$3;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;ILcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_3

    .line 180
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getProgress()I

    move-result p2

    iget-object v3, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 181
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 182
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 185
    :cond_0
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isHaveVoice()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;->isPausePlaying()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 187
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->stopAlphaAnim(Landroid/view/View;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->startAlphaAnim(Landroid/view/View;)V

    .line 191
    :goto_0
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getProgress()I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 194
    :goto_1
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 196
    :cond_3
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 197
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 199
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 201
    :goto_2
    iget-object p1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->itemEnable:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 108
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 109
    const-string v1, "playing"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 110
    iget-object p3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getProgress()I

    move-result p3

    .line 111
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    const/16 v2, 0x8

    if-lt p3, v1, :cond_1

    .line 112
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->stopAlphaAnim(Landroid/view/View;)V

    .line 113
    iget-object p0, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object p0, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isHaveVoice()Z

    move-result p2

    if-eqz p2, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;->isPausePlaying()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 118
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->stopAlphaAnim(Landroid/view/View;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object p2, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->ivSound:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->startAlphaAnim(Landroid/view/View;)V

    .line 122
    :goto_0
    iget-object p0, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    iget-object p0, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    :cond_4
    :goto_1
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
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->redmagic_broadcast_scene_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 98
    new-instance p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;->setIsRecyclable(Z)V

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    .line 50
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setItemEnable(ZZ)V
    .locals 1

    .line 72
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->itemEnable:Z

    if-eqz p2, :cond_0

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setFocused(Z)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPlayProgress(IIZ)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    .line 62
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getProgress()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 64
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setProgress(I)V

    if-eqz p3, :cond_0

    .line 66
    const-string p2, "playing"

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setRedmagicBroadcastSceneItemOnclick(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    return-void
.end method
