.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MenuAiFunctionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$1;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

    .line 193
    check-cast p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;I)V
    .locals 6

    .line 203
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    .line 205
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_TOGGLE:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    .line 206
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;->isItemSelected(ILcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;)Z

    move-result v1

    .line 207
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v2

    array-length v2, v2

    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    .line 208
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v2

    if-eqz v1, :cond_0

    aget v2, v2, v4

    goto :goto_0

    :cond_0
    aget v2, v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 210
    :goto_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v1, :cond_2

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF7976FC:I

    goto :goto_1

    :cond_2
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->white_CCFFFFFF:I

    :goto_1
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 211
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    if-ne v1, v2, :cond_5

    .line 212
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v1

    array-length v1, v1

    if-lt v1, v3, :cond_4

    .line 213
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getThumbnails()[I

    move-result-object v1

    aget v1, v1, v4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v4

    .line 215
    :goto_2
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$color;->white_CCFFFFFF:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    if-gtz v2, :cond_6

    .line 218
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 221
    :cond_6
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->bitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 222
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 223
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$color;->white_B3FFFFFF:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/BitmapUtils;->initBitmap(Landroid/content/Context;ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 224
    sget-object v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->bitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_7
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    :goto_4
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->access$700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;ILcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

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

    .line 193
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;
    .locals 3

    .line 198
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_aiassistant_window_menu_button_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;Landroid/view/View;)V

    return-object p2
.end method
