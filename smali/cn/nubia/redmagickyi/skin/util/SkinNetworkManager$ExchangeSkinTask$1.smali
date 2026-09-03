.class Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$1;
.super Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;
.source "SkinNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->showExchangeDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$1;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 241
    invoke-super {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->onBackPressed()V

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$1;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->cancelExchangeSkin()V

    return-void
.end method
