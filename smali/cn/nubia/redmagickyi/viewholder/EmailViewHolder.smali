.class public Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EmailViewHolder.java"


# instance fields
.field public tvMailDate:Landroid/widget/TextView;

.field public tvMailIcon:Landroid/widget/ImageView;

.field public tvMailTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_mail_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;->tvMailTitle:Landroid/widget/TextView;

    .line 19
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_mail_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;->tvMailDate:Landroid/widget/TextView;

    .line 21
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_mail_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;->tvMailIcon:Landroid/widget/ImageView;

    return-void
.end method
