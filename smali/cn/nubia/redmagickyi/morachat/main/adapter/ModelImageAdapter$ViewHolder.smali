.class public Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModelImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private image:Landroid/widget/ImageView;

.field image_select:Landroid/widget/TextView;

.field public ll_item:Landroid/widget/RelativeLayout;

.field private red_spot:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;Landroid/view/View;)V
    .locals 0
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

    .line 164
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    .line 165
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 166
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->ll_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->ll_item:Landroid/widget/RelativeLayout;

    .line 167
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->item_select_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    .line 168
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 169
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->red_spot:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->red_spot:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    return-object p0
.end method
