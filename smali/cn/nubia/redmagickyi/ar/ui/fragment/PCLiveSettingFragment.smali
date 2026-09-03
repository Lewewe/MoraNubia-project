.class public Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "PCLiveSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ALBUM_PHOTO_SUCCESS:I = 0x3

.field public static final CAMERA_SELECT_PHOTO:I = 0x2

.field private static final GREEN_BG_CLOSE:I = 0x0

.field private static final GREEN_BG_OPEN:I = 0x1

.field private static final PHOTO_SUCCESS_URI:Ljava/lang/String; = "uri_photo"

.field private static final TAG:Ljava/lang/String; = "PCLiveSettingFragment"


# instance fields
.field private final PERMISSION_CODE:I

.field arImageDialog:Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;

.field private green_bg_check:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private green_bg_text:Landroid/widget/TextView;

.field public handler:Landroid/os/Handler;

.field private imageCount:Landroid/widget/TextView;

.field private liveSetting:Landroid/widget/TextView;

.field private onSettingOpListener:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

.field private other_bg_img:Landroid/widget/ImageView;

.field private other_bg_layout:Landroid/widget/LinearLayout;

.field private other_image_text:Landroid/widget/TextView;

.field protected permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field permissions:[Ljava/lang/String;

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
    .locals 3

    .line 58
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->permissions:[Ljava/lang/String;

    const/16 v0, 0x111

    .line 73
    iput v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->PERMISSION_CODE:I

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    .line 339
    new-instance v0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$4;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->updatePreviewImage()V

    return-void
.end method

.method public static checkSelectPhotoPermission(Landroid/content/Context;)Z
    .locals 1

    .line 260
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 261
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static openAlbum(Landroid/app/Activity;)V
    .locals 3

    .line 288
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 291
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 294
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updatePreviewImage()V
    .locals 4

    .line 309
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 310
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->isHasCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->onSettingOpListener:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;->updatePreviewImage(ILcn/nubia/redmagickyi/ar/beans/ARImageBeans;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public UpdateSeletItem()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 299
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 300
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v4, "ar_image_item"

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    goto :goto_1

    .line 303
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

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

    .line 216
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 217
    instance-of v0, p1, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->onSettingOpListener:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 118
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 125
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 126
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 89
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public initData()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->imageCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

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

    .line 233
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->UpdateSeletItem()V

    .line 234
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->updatePreviewImage()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 10

    .line 131
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->quick_recycleview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$2;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 145
    new-instance v0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    iget-object v5, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_datas:Ljava/util/List;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v6

    iget-object v8, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    .line 146
    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->setClickInterface(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;)V

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 188
    new-instance v0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;-><init>()V

    .line 189
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 190
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->green_bg_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->green_bg_check:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 191
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->other_image_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_image_text:Landroid/widget/TextView;

    .line 193
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 194
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->green_bg_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->green_bg_text:Landroid/widget/TextView;

    .line 195
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->other_bg_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_bg_img:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->other_bg_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_bg_layout:Landroid/widget/LinearLayout;

    .line 198
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v1, "green_bg_open"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->green_bg_check:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->green_bg_check:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 204
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->image_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->imageCount:Landroid/widget/TextView;

    .line 205
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->image_text_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->liveSetting:Landroid/widget/TextView;

    .line 207
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult requestCode\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PCLiveSettingFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "data\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 271
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CAMERA_SELECT_PHOTO \uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 274
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x3

    .line 275
    iput v0, p1, Landroid/os/Message;->what:I

    .line 276
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "uri_photo"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 278
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 318
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 319
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->green_bg_check:I

    if-eq p1, v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->other_bg_img:I

    if-ne p1, v0, :cond_2

    .line 320
    :cond_0
    const-string p1, "green_bg_open"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 321
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string p2, "other_bg"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_bg_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 324
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_image_text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 325
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_image_text:Landroid/widget/TextView;

    const p2, 0x3e851eb8    # 0.26f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 326
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_bg_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 327
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_bg_img:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_bg_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 331
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_image_text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 332
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_image_text:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 333
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_bg_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 334
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->other_bg_img:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->other_bg_layout:I

    if-ne p1, v0, :cond_0

    .line 240
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 241
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->openAlbum(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 96
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->ar_pc_live_setting_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->rootView:Landroid/view/View;

    .line 97
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->initView(Landroid/view/View;)V

    .line 98
    new-instance p1, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance p2, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$1;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)V

    const/16 p3, 0x7530

    invoke-direct {p1, p3, p2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 112
    const-string p1, "PCLiveSettingFragment"

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 251
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 224
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    .line 225
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->initData()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 211
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOnMobileLiveSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.redmagickyi.pose.settings.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    const-string v1, "live_mode"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
