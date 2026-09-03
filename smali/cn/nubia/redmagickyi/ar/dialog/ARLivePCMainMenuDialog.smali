.class public Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "ARLivePCMainMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;,
        Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnDismissListener;,
        Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMobileListener;,
        Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnComputerListener;
    }
.end annotation


# static fields
.field public static final LIVE_PC_MAINMENU_CHARACTOR:I = 0x2

.field public static final LIVE_PC_MAINMENU_CLOSE:I = 0x0

.field public static final LIVE_PC_MAINMENU_FACE:I = 0x1

.field public static final LIVE_PC_MAINMENU_SETTING:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private close:Landroid/widget/RelativeLayout;

.field private currentImageName:Ljava/lang/String;

.field private imgLivePCChangeCharactor:Landroid/widget/CheckBox;

.field private imgLivePCClose:Landroid/widget/ImageView;

.field private imgLivePCFace:Landroid/widget/CheckBox;

.field private imgLivePCSettings:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mQdatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneBusy:Z

.field private onComputerListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnComputerListener;

.field private onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnDismissListener;

.field private onMenuClickListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

.field private onMobileListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMobileListener;

.field private pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

.field private rootView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnDismissListener;Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMobileListener;Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnComputerListener;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 31
    const-string p1, "image_half"

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->currentImageName:Ljava/lang/String;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mSceneBusy:Z

    .line 44
    const-string p1, "ARLivePCMainMenuDialog"

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->TAG:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnDismissListener;

    .line 74
    iput-object p3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onMobileListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMobileListener;

    .line 75
    iput-object p4, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onComputerListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnComputerListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, "image_half"

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->currentImageName:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mSceneBusy:Z

    .line 44
    const-string v0, "ARLivePCMainMenuDialog"

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->TAG:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onMenuClickListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    .line 80
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->initData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 31
    const-string p1, "image_half"

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->currentImageName:Ljava/lang/String;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mSceneBusy:Z

    .line 44
    const-string p1, "ARLivePCMainMenuDialog"

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    const-string p1, "image_half"

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->currentImageName:Ljava/lang/String;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mSceneBusy:Z

    .line 44
    const-string p1, "ARLivePCMainMenuDialog"

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onMenuClickListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    return-object p0
.end method

.method private initData()V
    .locals 8

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    .line 178
    new-instance v0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    iget-object v4, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    const-string v2, "ar_image_item"

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->currentImageName:Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    .line 180
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 181
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->currentImageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    goto :goto_1

    .line 184
    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    .line 188
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->currentImageName:Ljava/lang/String;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->live_pc_face_pressed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_2

    .line 192
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$drawable;->ar_live_pc_face_reg_selector:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 194
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v2

    const-string v3, "face_open"

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 197
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$1;-><init>(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    new-instance v1, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$2;-><init>(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->setClickInterface(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;)V

    .line 245
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private showCharactor(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 162
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->showCharactor(Z)V

    .line 163
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnDismissListener;

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public getContentView()I
    .locals 0

    .line 156
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->ar_live_pc_main_menu_dialog_view:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 3

    .line 249
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_main_menu:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->rootView:Landroid/widget/LinearLayout;

    .line 250
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_close:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCClose:Landroid/widget/ImageView;

    .line 251
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_open_face_reg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    .line 253
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_change_charactor:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    .line 255
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_setting:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCSettings:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->pc_live_charactor_recycleview:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 260
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->dialog_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->close:Landroid/widget/RelativeLayout;

    .line 261
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 114
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->live_pc_close:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 115
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->showCharactor(Z)V

    goto/16 :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onMenuClickListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    if-eqz p1, :cond_9

    .line 120
    invoke-interface {p1, v1, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;->onClickMainNenuItem(IZ)V

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->dismiss()V

    goto :goto_0

    .line 124
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->live_pc_open_face_reg:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    .line 125
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 126
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mSceneBusy:Z

    if-eqz v0, :cond_2

    .line 127
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 130
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onMenuClickListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    if-eqz p1, :cond_3

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, v2, v0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;->onClickMainNenuItem(IZ)V

    .line 133
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->showCharactor(Z)V

    goto :goto_0

    .line 135
    :cond_4
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->live_pc_change_charactor:I

    if-ne p1, v0, :cond_7

    .line 136
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onMenuClickListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    if-eqz p1, :cond_5

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v3, 0x2

    invoke-interface {p1, v3, v0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;->onClickMainNenuItem(IZ)V

    .line 139
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 140
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->showCharactor(Z)V

    goto :goto_0

    .line 142
    :cond_6
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->showCharactor(Z)V

    goto :goto_0

    .line 144
    :cond_7
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->live_pc_setting:I

    if-ne p1, v0, :cond_8

    .line 145
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->onMenuClickListener:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    if-eqz p1, :cond_9

    const/4 v0, 0x3

    .line 146
    invoke-interface {p1, v0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;->onClickMainNenuItem(IZ)V

    .line 147
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->dismiss()V

    goto :goto_0

    .line 149
    :cond_8
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->dialog_bg:I

    if-ne p1, v0, :cond_9

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->dismiss()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->onWindowAttributeUpdate(Landroid/view/Window;)V

    .line 99
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setSceneBusy(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mSceneBusy:Z

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->showCharactor(Z)V

    .line 172
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->initData()V

    .line 173
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method

.method public updateCharactorData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->mQdatas:Ljava/util/List;

    return-void
.end method
