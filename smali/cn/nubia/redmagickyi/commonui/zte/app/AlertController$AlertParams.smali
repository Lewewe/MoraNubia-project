.class public Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public final mContext:Landroid/content/Context;

.field public mItems:[Ljava/lang/CharSequence;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mViewGetter:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 425
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mCancelable:Z

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)V
    .locals 4

    .line 429
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 433
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->access$702(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 435
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    .line 436
    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 439
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    const/4 v2, -0x2

    .line 440
    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 445
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 446
    :cond_4
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->access$802(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 447
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->access$902(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 448
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->access$602(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 451
    :cond_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mViewGetter:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;

    if-eqz p0, :cond_6

    .line 452
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setViewGetter(Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;)V

    :cond_6
    return-void
.end method
