.class public Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;
    }
.end annotation


# static fields
.field public static final LIVE_PC_MAINMENU_CHARACTOR:I = 0x2

.field public static final LIVE_PC_MAINMENU_CLOSE:I = 0x0

.field public static final LIVE_PC_MAINMENU_FACE:I = 0x1

.field public static final LIVE_PC_MAINMENU_SETTING:I = 0x3

.field private static final MSG_HIDE_MENU:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MenuView"


# instance fields
.field private currentImageName:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private imgLivePCChangeCharactor:Landroid/widget/CheckBox;

.field private imgLivePCClose:Landroid/widget/ImageView;

.field private imgLivePCFace:Landroid/widget/CheckBox;

.field private imgLivePCSettings:Landroid/widget/ImageView;

.field private isScreenOriatationPortrait:Z

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

.field private mRootView:Landroid/view/View;

.field private onMenuClickListener:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

.field private pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

.field private showCharactors:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "image_half"

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->currentImageName:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->showCharactors:Z

    .line 50
    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->handler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->onMenuClickListener:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->ar_live_mobile_main_menu_dialog_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mRootView:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->initView()V

    .line 67
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->showCharactor(Z)V

    .line 68
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->initData()V

    const/4 p1, 0x1

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->onMenuClickListener:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    return-object p0
.end method

.method private dismiss(Z)V
    .locals 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform dismiss menu, delayed? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 249
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 251
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public static getSelectedModeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 161
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p0

    const-string v0, "ar_image_item"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initData()V
    .locals 8

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    .line 166
    new-instance v0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->getSelectedModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->currentImageName:Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    .line 168
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 169
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->currentImageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    goto :goto_1

    .line 172
    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    .line 176
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->currentImageName:Ljava/lang/String;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->live_pc_face_pressed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_2

    .line 180
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$drawable;->ar_live_pc_face_reg_selector:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 182
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->isFaceOpen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 185
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutDirection(I)V

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$2;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$3;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->setClickInterface(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;)V

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static isFaceOpen(Landroid/content/Context;)Z
    .locals 1

    .line 157
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p0

    const-string v0, "face_open"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setFaceOpen(Landroid/content/Context;Z)V
    .locals 1

    .line 145
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "face_open"

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showCharactor(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateSelectItem()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    const-string v2, "ar_image_item"

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->currentImageName:Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    .line 134
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 135
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->currentImageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    goto :goto_1

    .line 138
    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setHasCheck(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public initView()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mRootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCClose:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mRootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_open_face_reg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    .line 259
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mRootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_change_charactor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    .line 261
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mRootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCSettings:Landroid/widget/ImageView;

    .line 263
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mRootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->pc_live_charactor_recycleview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->pcLiveMenuRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public isScreenOriatationChanged(Z)Z
    .locals 0

    .line 273
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->isScreenOriatationPortrait:Z

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->dismiss(Z)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 102
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_close:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 103
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->showCharactor(Z)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->onMenuClickListener:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

    if-eqz p0, :cond_7

    .line 108
    invoke-interface {p0, v2, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;->onClickMainNenuItem(IZ)V

    goto :goto_0

    .line 111
    :cond_1
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_open_face_reg:I

    if-ne p1, v1, :cond_3

    .line 112
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->setFaceOpen(Landroid/content/Context;Z)V

    .line 113
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->onMenuClickListener:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

    if-eqz p1, :cond_2

    .line 114
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;->onClickMainNenuItem(IZ)V

    .line 116
    :cond_2
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->dismiss(Z)V

    goto :goto_0

    .line 117
    :cond_3
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->live_pc_change_charactor:I

    if-ne p1, v1, :cond_5

    .line 118
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCChangeCharactor:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 119
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->showCharactor(Z)V

    goto :goto_0

    .line 121
    :cond_4
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->showCharactor(Z)V

    goto :goto_0

    .line 123
    :cond_5
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->live_pc_setting:I

    if-ne p1, v0, :cond_7

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->onMenuClickListener:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

    if-eqz p1, :cond_6

    const/4 v0, 0x3

    .line 125
    invoke-interface {p1, v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;->onClickMainNenuItem(IZ)V

    .line 127
    :cond_6
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->dismiss(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setScreenOriatationPortrait(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->isScreenOriatationPortrait:Z

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

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mQdatas:Ljava/util/List;

    return-void
.end method

.method public updateUI()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->isFaceOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->imgLivePCFace:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
