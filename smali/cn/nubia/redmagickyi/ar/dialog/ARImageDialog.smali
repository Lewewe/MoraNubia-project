.class public Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "ARImageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private close:Landroid/widget/ImageView;

.field private context:Landroid/app/Activity;

.field private onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$OnDismissListener;

.field private otherAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

.field private other_datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;"
        }
    .end annotation
.end field

.field private other_recycleview:Landroidx/recyclerview/widget/RecyclerView;

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


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$OnDismissListener;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_datas:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_datas:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->context:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$OnDismissListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_datas:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_datas:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_datas:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_datas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->context:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$OnDismissListener;

    if-eqz p0, :cond_0

    .line 59
    invoke-interface {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public getContentView()I
    .locals 0

    .line 77
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->ar_image_dialog:I

    return p0
.end method

.method public initData()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "ARImageDialog"

    const-string v1, "redMagicARImageDataManager != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_datas:Ljava/util/List;

    .line 132
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_datas:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_datas:Ljava/util/List;

    .line 135
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_datas:Ljava/util/List;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getARImages(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/Window;)V
    .locals 10

    .line 82
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->initData()V

    .line 83
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->close:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->close:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->quick_recycleview:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->context:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    new-instance p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    iget-object v4, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_datas:Ljava/util/List;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView;Z)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->setMoreImagesDialog(Z)V

    .line 89
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$1;

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v3}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$1;-><init>(Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 101
    new-instance p1, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;-><init>()V

    .line 102
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quick_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 104
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->other_recycleview:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->context:Landroid/app/Activity;

    invoke-direct {v1, v3, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    new-instance p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    iget-object v5, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_datas:Ljava/util/List;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView;Z)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->otherAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    .line 107
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->setMoreImagesDialog(Z)V

    .line 108
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->otherAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$2;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$2;-><init>(Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 120
    new-instance p1, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;-><init>()V

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->other_recycleview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 122
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->quickAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    .line 123
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->otherAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 1

    .line 141
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->onWindowAttributeUpdate(Landroid/view/Window;)V

    .line 142
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 143
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
