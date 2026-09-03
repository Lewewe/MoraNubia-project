.class public Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TechnologyCenterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;,
        Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

.field private isSimplifiedChinese:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->list:Ljava/util/List;

    .line 49
    sget-object p1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->isSimplifiedChinese:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->list:Ljava/util/List;

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

    .line 28
    check-cast p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;I)V
    .locals 13

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    .line 63
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 64
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getTitel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 66
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->isSimplifiedChinese:Z

    if-nez v1, :cond_4

    .line 71
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_NONE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->isSameTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 74
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f5_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 79
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f5_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 83
    :cond_2
    :goto_0
    new-instance v1, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;

    iget-object v8, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->itemView:Landroid/view/View;

    iget-object v9, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v10, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitleSub:Landroid/widget/TextView;

    iget-object v11, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvDescribe:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getTitel()Ljava/lang/String;

    move-result-object v12

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;-><init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 84
    iget-object v4, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->run()V

    .line 87
    :cond_3
    iget-object v4, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_4
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->tvDescribe:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getDescribe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setChecked(Z)V

    .line 92
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    new-instance v4, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;

    invoke-direct {v4, p0, v0, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;-><init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;I)V

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    new-instance v4, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;

    invoke-direct {v4, p0, v0, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;-><init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;I)V

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    new-instance v4, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$3;

    invoke-direct {v4, p0, v0, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$3;-><init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;I)V

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->layoutFunctionEnable:Landroid/view/View;

    new-instance v4, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$4;

    invoke-direct {v4, p0, p1}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$4;-><init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreview:Landroid/widget/ImageView;

    new-instance v4, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$5;

    invoke-direct {v4, p0, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$5;-><init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    new-instance v4, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$6;

    invoke-direct {v4, p0, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$6;-><init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewIcon:Landroid/widget/ImageView;

    new-instance v4, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$7;

    invoke-direct {v4, p0, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$7;-><init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->layoutFunctionEnable:Landroid/view/View;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v4

    if-ne v4, v5, :cond_5

    goto :goto_1

    :cond_5
    move v4, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_7

    goto :goto_3

    .line 155
    :cond_7
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_8

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-nez v1, :cond_8

    .line 156
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 159
    :cond_8
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 160
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 164
    :cond_9
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 165
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 169
    :cond_a
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 152
    :cond_b
    :goto_3
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewNewStyle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :goto_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    if-eqz v1, :cond_c

    invoke-interface {v1, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;->shouldShowSettingIcon(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 176
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_kejizhongxing_settings:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 178
    :cond_c
    iget-object p2, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_kejizhongxing_viewfullscreen:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_5
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result p0

    if-eq p0, v6, :cond_d

    .line 182
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 184
    :cond_d
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->imgPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
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

    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->isSimplifiedChinese:Z

    if-eqz p0, :cond_0

    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->technology_center_item:I

    goto :goto_0

    :cond_0
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->technology_center_item_en:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 56
    new-instance p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setTechnologyCenterItemOnclick(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    return-void
.end method
