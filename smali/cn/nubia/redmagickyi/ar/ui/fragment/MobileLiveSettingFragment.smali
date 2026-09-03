.class public Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "MobileLiveSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private alphImage:Landroid/widget/TextView;

.field arImageDialog:Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;

.field private gravity_check:Landroid/widget/CheckBox;

.field private imageCount:Landroid/widget/TextView;

.field private image_trans_seekbar:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

.field private image_trans_seekbar_tx:Landroid/widget/TextView;

.field private liveSetting:Landroid/widget/TextView;

.field private onSettingOpListener:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

.field private quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

.field private quick_datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;"
        }
    .end annotation
.end field

.field private quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

.field private redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

.field private redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->updatePreviewImage()V

    return-void
.end method

.method private updatePreviewImage()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 219
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->isHasCheck()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->onSettingOpListener:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    invoke-interface {v3, v2, v1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;->updatePreviewImage(ILcn/nubia/redmagickyi/ar/beans/ARImageBeans;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->onSettingOpListener:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->getProgress()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    invoke-interface {v0, v2, p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;->updateAlpha(IF)V

    return-void
.end method


# virtual methods
.method public UpdateSeletItem()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 208
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 209
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v4, "ar_image_item"

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    goto :goto_1

    .line 212
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 181
    instance-of v0, p1, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    if-eqz v0, :cond_0

    .line 182
    check-cast p1, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->onSettingOpListener:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 81
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 88
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 66
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public initData()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->imageCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->UpdateSeletItem()V

    .line 198
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->updatePreviewImage()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 10

    .line 94
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->quick_recycleview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$1;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 108
    new-instance v0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    iget-object v5, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v6

    iget-object v8, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    .line 109
    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->setClickInterface(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 150
    new-instance v0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;-><init>()V

    .line 151
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 152
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->gravity_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->gravity_check:Landroid/widget/CheckBox;

    .line 153
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v1, "gravity"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->gravity_check:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v1, "image_trans"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v0

    .line 157
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->image_trans_seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    iput-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    .line 158
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->image_trans_seekbar_tx:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar_tx:Landroid/widget/TextView;

    .line 159
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar_tx:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 161
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->IMAGE_TRANS_RANGE:[I

    aget v3, v4, v3

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->setMin(I)V

    .line 162
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->IMAGE_TRANS_RANGE:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->setMax(I)V

    .line 163
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->setProgress(I)V

    .line 164
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar_tx:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->image_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->imageCount:Landroid/widget/TextView;

    .line 167
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scale_image_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->alphImage:Landroid/widget/TextView;

    .line 169
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->image_text_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->liveSetting:Landroid/widget/TextView;

    .line 171
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 228
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->gravity_check:I

    if-ne p1, v0, :cond_1

    .line 229
    const-string p1, "gravity"

    if-eqz p2, :cond_0

    .line 230
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    const-string p2, "1"

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->sendOnLiveSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    const-string p2, "0"

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->sendOnLiveSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 73
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->ar_mobile_setting_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->rootView:Landroid/view/View;

    .line 74
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->initView(Landroid/view/View;)V

    .line 75
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->TAG:Ljava/lang/String;

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 241
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    sget p3, Lcn/nubia/redmagickyi/main/R$id;->image_trans_seekbar:I

    if-ne p1, p3, :cond_0

    .line 242
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->image_trans_seekbar_tx:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->onSettingOpListener:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p3}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;->updateAlpha(IF)V

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "image_trans"

    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->sendOnLiveSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 188
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    .line 189
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->initData()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 256
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "image_trans"

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOnLiveSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.redmagickyi.pose.settings.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    const-string v1, "live_mode"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
