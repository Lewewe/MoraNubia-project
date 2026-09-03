.class public Lcom/zte/payment/common/IPCMethods$ProcessRefund;
.super Ljava/lang/Object;
.source "IPCMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/payment/common/IPCMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessRefund"
.end annotation


# static fields
.field public static final METHOD:Ljava/lang/String; = "processRefund"

.field public static final P_KEY_PAYMENT_NUMBER:Ljava/lang/String; = "payment_number"

.field public static final P_KEY_REASON:Ljava/lang/String; = "reason"

.field public static final P_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final R_KEY_REFUND_SUCCESS:Ljava/lang/String; = "refund_success"

.field public static final VAL_REASON_API_FAILED:Ljava/lang/String; = "API_FAILED"

.field public static final VAL_REASON_NO_RESULT:Ljava/lang/String; = "NO_RESULT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
