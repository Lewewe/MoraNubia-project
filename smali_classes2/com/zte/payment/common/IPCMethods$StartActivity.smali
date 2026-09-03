.class public Lcom/zte/payment/common/IPCMethods$StartActivity;
.super Ljava/lang/Object;
.source "IPCMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/payment/common/IPCMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartActivity"
.end annotation


# static fields
.field public static final METHOD:Ljava/lang/String; = "startActivity"

.field public static final P_KEY_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final VAL_USER_LOGIN:Ljava/lang/String; = "user_login"

.field public static final VAL_USER_RECHARGE:Ljava/lang/String; = "user_recharge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
