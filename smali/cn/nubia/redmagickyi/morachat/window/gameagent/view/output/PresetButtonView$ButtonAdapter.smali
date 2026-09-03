.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PresetButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    move-result-object p0

    array-length p0, p0

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

    .line 171
    check-cast p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;I)V
    .locals 6

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    move-result-object v0

    aget-object v0, v0, p2

    const/4 v1, 0x0

    if-nez p2, :cond_4

    .line 183
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;->isAccompanySelected()Z

    move-result v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v4, "Selected"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$800()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 186
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 187
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v2, :cond_1

    sget v5, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_floatingwindow_company_selected:I

    goto :goto_1

    :cond_1
    sget v5, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_floatingwindow_company:I

    :goto_1
    invoke-static {v4, v5}, Lcn/nubia/redmagickyi/util/BitmapUtils;->initBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 188
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$800()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_3

    .line 193
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Lcn/nubia/redmagickyi/view/StrokeTextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->purple_FF7976FC:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setRealTextColor(I)V

    goto :goto_2

    .line 195
    :cond_3
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Lcn/nubia/redmagickyi/view/StrokeTextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setRealTextColor(I)V

    goto :goto_2

    .line 198
    :cond_4
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 202
    :cond_5
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$800()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 203
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 204
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 205
    array-length v3, v2

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 206
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$800()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_6
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    :goto_2
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;)Lcn/nubia/redmagickyi/view/StrokeTextView;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 171
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;
    .locals 3

    .line 176
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_gameagent_window_menu_button_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;Landroid/view/View;)V

    return-object p2
.end method
