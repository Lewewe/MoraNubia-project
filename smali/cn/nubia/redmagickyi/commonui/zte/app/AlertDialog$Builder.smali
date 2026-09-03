.class public Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 129
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$style;->ZTEAlertDialog_center:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$style;->ZTEAlertDialog:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    .line 142
    iput p2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;
    .locals 3

    .line 357
    new-instance v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 358
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    invoke-static {v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->access$000(Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->apply(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)V

    .line 359
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->setCancelable(Z)V

    .line 360
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 361
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 363
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 364
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 365
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 366
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 332
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 333
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p2, p1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 255
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 2

    .line 304
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 305
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p2, p1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 316
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 317
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p2, p1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 2

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 193
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 2

    .line 231
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 232
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p2, p1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 244
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 245
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p2, p1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 283
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 293
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 2

    .line 205
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 206
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p2, p1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 218
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 219
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p2, p1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 2

    .line 163
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iget-object v1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    .locals 1

    .line 346
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->P:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;->mViewGetter:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;

    return-object p0
.end method

.method public show()Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;->create()Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;

    move-result-object p0

    .line 377
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->show()V

    return-object p0
.end method
