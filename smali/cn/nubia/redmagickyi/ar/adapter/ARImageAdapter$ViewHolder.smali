.class public Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ARImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private image:Landroid/widget/ImageView;

.field image_select:Landroid/widget/TextView;

.field public ll_item:Landroid/widget/RelativeLayout;

.field name:Landroid/widget/TextView;

.field private red_spot:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    .line 221
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 222
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->name:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 224
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->ll_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->ll_item:Landroid/widget/RelativeLayout;

    .line 227
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->item_select_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    .line 228
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 229
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->red_spot:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->red_spot:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->red_spot:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    return-object p0
.end method
