.class Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/view/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiListDialog"
.end annotation


# instance fields
.field private curWifiName:Ljava/lang/String;

.field private onItemClickListener:Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

.field private tvTitle:Landroid/widget/TextView;

.field private wifiAdapter:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

.field private wifiLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private wifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private wifi_close:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    .line 184
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    .line 185
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    .line 176
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    .line 180
    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 0

    .line 206
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->care_wifi_dialog:I

    return p0
.end method

.method public initAdapter()V
    .locals 4

    .line 242
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_rectcle_view:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 246
    new-instance v0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->curWifiName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiAdapter:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    .line 247
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$layout;->care_item_header_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->addHeaderView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiAdapter:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->setActionItemOnclick(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;)V

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiAdapter:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public initView(Landroid/view/Window;)V
    .locals 1

    .line 211
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->tvTitle:Landroid/widget/TextView;

    .line 212
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 213
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->wifi_close:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifi_close:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_close:I

    if-ne p1, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onHeaderClick(Landroid/view/View;)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->onItemClickListener:Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;->onHeaderCkearClick()V

    .line 261
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->dismiss()V

    return-void
.end method

.method public onWifiItemClick(Landroid/view/View;I)V
    .locals 2

    .line 254
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->onItemClickListener:Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;->onWifiItemClick(Ljava/util/List;ILjava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->dismiss()V

    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->onWindowAttributeUpdate(Landroid/view/Window;)V

    .line 191
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 192
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 193
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 194
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setCurWifiName(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->curWifiName:Ljava/lang/String;

    return-void
.end method

.method public setOnItemClickListener(Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->onItemClickListener:Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;

    return-void
.end method

.method public show()V
    .locals 4

    .line 227
    new-instance v0, Lcn/nubia/redmagickyi/care/utils/WifiUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->access$300(Lcn/nubia/redmagickyi/care/view/WifiDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;-><init>(Landroid/content/Context;)V

    .line 228
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 229
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getAroundWifiDeviceInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wifiList.size():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 231
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 232
    iget-object v2, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wifiList:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->wifiList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->initAdapter()V

    .line 238
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
