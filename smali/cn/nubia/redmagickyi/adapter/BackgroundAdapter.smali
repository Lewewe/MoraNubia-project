.class public Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BackgroundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$BackgroundClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$BackgroundClickInterface;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/BackgroundBeans;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/BackgroundBeans;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;)Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$BackgroundClickInterface;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$BackgroundClickInterface;

    return-object p0
.end method

.method private createOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x4

    .line 84
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 86
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method


# virtual methods
.method public getCurrentSelected()I
    .locals 2

    const/4 v0, 0x0

    .line 43
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->isSelected()Z

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

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

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
    check-cast p1, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;I)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p1, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/model/BackgroundBeans;

    .line 67
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/BackgroundBeans;->getBgId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_preview.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->createOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    const-string v3, "bg_preview"

    invoke-static {v1, v3, v0, v2}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;->thumbnail:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_1
    iget-object p1, p1, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$1;-><init>(Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->background_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 55
    new-instance p1, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/viewholder/BackGroundViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setBackgroundItemOnclick(Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$BackgroundClickInterface;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/BackgroundAdapter$BackgroundClickInterface;

    return-void
.end method
