.class public abstract Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;
.super Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;
.source "AbstractWheelTextAdapter.java"


# static fields
.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1

.field public static context:Landroid/content/Context; = null

.field public static selected_text_color:I = -0x8fff90

.field public static selected_text_size:I = 0x0

.field public static un_selected_text_color:I = -0x8fff90

.field public static un_selected_text_size:I


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public currentIndex:I

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_MOCHIY:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->isSameTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    goto :goto_0

    :cond_0
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->selected_text_size:I

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_MOCHIY:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->isSameTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    goto :goto_1

    :cond_1
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->un_selected_text_size:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    .line 59
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;III)V

    .line 71
    sput-object p1, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->app_start_guide_birth_purpule:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sput p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->selected_text_color:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$color;->app_start_guide_birth_purpule:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sput p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->un_selected_text_color:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelAdapter;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->currentIndex:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->arrayList:Ljava/util/ArrayList;

    .line 85
    sput-object p1, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    .line 86
    iput p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    .line 87
    iput p3, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    .line 88
    iput p4, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->currentIndex:I

    .line 90
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 0

    if-nez p2, :cond_0

    .line 233
    :try_start_0
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 234
    check-cast p1, Landroid/widget/TextView;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    :goto_0
    const-string p1, "AbstractWheelAdapter"

    const-string p2, "You must supply a resource ID for a TextView"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 259
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 257
    :cond_1
    new-instance p0, Landroid/widget/TextView;

    sget-object p1, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    .line 205
    iget p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 0

    .line 145
    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return p0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_5

    .line 167
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    if-nez p2, :cond_0

    .line 169
    iget p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 171
    :cond_0
    iget p3, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p3

    .line 172
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_4

    .line 176
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    .line 178
    const-string v0, ""

    .line 180
    :cond_2
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->currentIndex:I

    const/4 v0, 0x0

    if-ne p1, p0, :cond_3

    .line 183
    sget p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->selected_text_size:I

    int-to-float p0, p0

    invoke-virtual {p3, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    sget p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->selected_text_color:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x3f9d70a4    # 1.23f

    .line 185
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 186
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_0

    .line 188
    :cond_3
    sget p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->un_selected_text_size:I

    int-to-float p0, p0

    invoke-virtual {p3, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    sget p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->un_selected_text_color:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 190
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 191
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_0
    const/16 p0, 0x11

    .line 193
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, 0x1

    .line 194
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setLines(I)V

    .line 195
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    return-object p2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemResource()I
    .locals 0

    .line 109
    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    return p0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .locals 0

    .line 127
    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    return p0
.end method

.method public getTextViews()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->arrayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setEmptyItemResource(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return-void
.end method

.method public setItemResource(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    return-void
.end method

.method public setItemTextResource(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    return-void
.end method
