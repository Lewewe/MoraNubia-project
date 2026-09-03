.class public interface abstract Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;
.super Ljava/lang/Object;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/view/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWifiItemClickListener"
.end annotation


# virtual methods
.method public abstract onHeaderCkearClick()V
.end method

.method public abstract onWifiItemClick(Ljava/util/List;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
