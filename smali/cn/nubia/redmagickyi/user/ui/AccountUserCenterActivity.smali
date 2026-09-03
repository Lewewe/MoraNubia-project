.class public Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.source "AccountUserCenterActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;,
        Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$InfoType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BaseMvpActivity<",
        "Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;",
        "Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;",
        ">;",
        "Lcn/nubia/redmagickyi/user/view/AccountUserCenterView;"
    }
.end annotation


# static fields
.field private static final PASSWORD_CHANGE_SUCCESS:I = 0x4

.field public static final PHOTO_CLIP:I = 0x3

.field public static final PHOTO_PICK:I = 0x2

.field public static final PHOTO_TAKE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountUserCenterActivity"

.field private static final URI_PROFIX:Ljava/lang/String; = "content://com.google.android.apps.photos"


# instance fields
.field private final PERMISSION_CODE:I

.field private birthday:Ljava/lang/String;

.field crop_uri:Landroid/net/Uri;

.field private mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

.field private mEvNickName:Landroid/widget/EditText;

.field private mEvPassword:Landroid/widget/EditText;

.field private mHeadBitmap:Landroid/graphics/Bitmap;

.field private mHeadPhoto:Landroid/widget/ImageView;

.field private mInputVerificate:Landroid/widget/TextView;

.field private mTvBirthday:Landroid/widget/TextView;

.field private mTvNickName:Landroid/widget/TextView;

.field private mTvSex:Landroid/widget/TextView;

.field permissions:[Ljava/lang/String;

.field photo_uri:Landroid/net/Uri;

.field private thread:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;-><init>()V

    .line 68
    const-string v0, "1900-01-01"

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->birthday:Ljava/lang/String;

    const/4 v0, 0x3

    .line 129
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->permissions:[Ljava/lang/String;

    const/16 v0, 0x111

    .line 132
    iput v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->PERMISSION_CODE:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->intoChangePhoneActivity()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->sendVerificationCode()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->openZteCam()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->openAlbum()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mEvNickName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->thread:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->countdown(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mInputVerificate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    return-object p0
.end method

.method private countdown(I)V
    .locals 7

    .line 284
    new-instance v6, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;JJ)V

    iput-object v6, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->thread:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;

    .line 285
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 681
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :try_start_1
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 688
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p0, v0

    .line 685
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    .line 688
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 690
    :cond_2
    throw p1
.end method

.method private init()V
    .locals 1

    .line 109
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->head_img_item:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 110
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->nickname_item:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 112
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sex_item:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_birthday_item:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 116
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->change_password_item:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 118
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->change_phone_item:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 120
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->logout_item:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_head_img:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mHeadPhoto:Landroid/widget/ImageView;

    .line 124
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_user_birthday:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvBirthday:Landroid/widget/TextView;

    .line 125
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_sex:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvSex:Landroid/widget/TextView;

    .line 126
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_nick_name:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvNickName:Landroid/widget/TextView;

    return-void
.end method

.method private inputVerificationCode()V
    .locals 4

    .line 195
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->common_ui_input_password:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_passwd_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->user_verify_phone_prefix:I

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->ev_passwd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mEvPassword:Landroid/widget/EditText;

    .line 201
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->input_verifycode:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 202
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_forget_passwd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mInputVerificate:Landroid/widget/TextView;

    .line 203
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->next:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    new-instance v1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->cancel:I

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$2;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 205
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->confirm:I

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$1;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 210
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->show()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mEvPassword:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->showSoftInput(Landroid/widget/EditText;)V

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mInputVerificate:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$3;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private intoChangePhoneActivity()V
    .locals 4

    .line 252
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 253
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mEvPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 258
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->verification_code_empty:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 262
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    .line 263
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mEvPassword:Landroid/widget/EditText;

    .line 264
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$5;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$5;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 262
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->checkUserVerifySmsCode(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method

.method private isValidFileUri(Landroid/net/Uri;)Z
    .locals 1

    .line 658
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 663
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 667
    :cond_1
    const-string p1, ".*[<>|\"\'].+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method private openAlbum()V
    .locals 1

    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->photo_uri:Landroid/net/Uri;

    .line 576
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->openAlbum(Landroid/app/Activity;)V

    return-void
.end method

.method private openCrop(Landroid/net/Uri;)V
    .locals 5

    .line 584
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->checkCropPermission(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AccountUserCenterActivity"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content://com.google.android.apps.photos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "cropDir"

    const-string v4, "redmagicCrop"

    if-eqz v0, :cond_1

    .line 586
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->getNewUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v3}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->openCrop(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->crop_uri:Landroid/net/Uri;

    goto :goto_0

    .line 590
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->user_crop_failed:I

    invoke-static {p0, p1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 591
    const-string p0, "new_uri error!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v3}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->openCrop(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->crop_uri:Landroid/net/Uri;

    goto :goto_0

    .line 598
    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->user_crop_permission_leak:I

    invoke-static {p0, p1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 599
    const-string p0, "crop permission leak"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private openZteCam()V
    .locals 3

    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->photo_uri:Landroid/net/Uri;

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_redmagic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redmagicDir"

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->openZteCam(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->photo_uri:Landroid/net/Uri;

    return-void
.end method

.method private selectDatePickerDialog()V
    .locals 13

    const/4 v0, 0x3

    .line 353
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x76c

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v3, v0, v3

    const/4 v4, 0x2

    aput v3, v0, v4

    .line 354
    iget-object v5, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->birthday:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v6, v1

    .line 355
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 356
    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 359
    :cond_0
    new-instance v5, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    new-instance v9, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;

    invoke-direct {v9, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    aget v10, v0, v1

    aget v6, v0, v3

    add-int/lit8 v11, v6, -0x1

    aget v12, v0, v4

    move-object v7, v5

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 385
    invoke-virtual {v5, v1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->SetSwitchState(Z)V

    const/16 p0, 0x7f5

    .line 386
    invoke-virtual {v5, v2, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setYearMinMaxValue(II)V

    .line 387
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->show()V

    return-void
.end method

.method private sendVerificationCode()V
    .locals 3

    .line 230
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/client/AccountClient;->getInstance(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    .line 231
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$4;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 230
    invoke-virtual {v0, v1, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->userVerifyByMobile(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method

.method private setHeadImage()V
    .locals 3

    const/4 v0, 0x2

    .line 413
    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->user_take_photo:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->user_select_from_album:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 414
    new-instance v1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 415
    invoke-virtual {v1, v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->cancel:I

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$9;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$9;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 440
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p0

    .line 445
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->show()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    return-void
.end method

.method private setNickName()V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->commom_ui_nick_name:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 452
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->ev_nick_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mEvNickName:Landroid/widget/EditText;

    .line 453
    new-instance v1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->cancel:I

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$12;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$12;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 454
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->confirm:I

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$11;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$11;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 459
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->show()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    .line 469
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mEvNickName:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->showSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method private setSexDialog()V
    .locals 3

    const/4 v0, 0x2

    .line 392
    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->user_sex_male:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->user_sex_female:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 393
    new-instance v1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$8;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$8;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->cancel:I

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$7;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$7;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 404
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p0

    .line 409
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->show()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .line 544
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->open_camera_permissions:I

    .line 545
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->cancel:I

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$15;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$15;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 546
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->to_setting:I

    new-instance v2, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$14;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$14;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    .line 551
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 561
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->create()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object p0

    .line 563
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->show()V

    return-void
.end method

.method private showSoftInput(Landroid/widget/EditText;)V
    .locals 3

    .line 474
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 478
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 479
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 480
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 481
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v1, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$13;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$13;-><init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;Landroid/widget/EditText;)V

    const-wide/16 p0, 0xc8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p0, p1, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private showUserInfo()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->account_empty:I

    .line 173
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->account_empty:I

    .line 174
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 175
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->self()Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 179
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mHeadPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvNickName:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvSex:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getBirthday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->birthday:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvBirthday:Landroid/widget/TextView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getBirthday()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public LoginOut()V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->finish()V

    return-void
.end method

.method public SaveAccountInfo()V
    .locals 1

    .line 329
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getAccountInfo()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getAccountInfo()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveAccountInfo(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public UpdateAccountInfoSuccess(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvBirthday:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;->setBirtday(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->SaveAccountInfo()V

    .line 300
    iput-object p2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->birthday:Ljava/lang/String;

    goto :goto_1

    .line 308
    :cond_1
    const-string p1, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 309
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvSex:Landroid/widget/TextView;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->user_sex_male:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->user_sex_male:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;->setSex(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    const-string p1, "2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 312
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvSex:Landroid/widget/TextView;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->user_sex_female:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->user_sex_female:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;->setSex(Ljava/lang/String;)V

    .line 315
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->SaveAccountInfo()V

    goto :goto_1

    .line 303
    :cond_4
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;->setNickName(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->SaveAccountInfo()V

    .line 305
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mTvNickName:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public UpdateHeadImageSuccess()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mHeadPhoto:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->createPresenter()Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;
    .locals 0

    .line 81
    new-instance p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;-><init>()V

    return-object p0
.end method

.method public hideLoadingView()V
    .locals 0

    .line 504
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->hideLoadingDialog()V

    return-void
.end method

.method protected initData()V
    .locals 1

    .line 91
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->initData()V

    .line 92
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getAccountInfo()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->getAccountInfo()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mAccountInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    .line 95
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->showUserInfo()V

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 1

    .line 102
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 103
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 105
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->account_manager:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->SetTitle(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->init()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "file:"

    .line 605
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    .line 606
    const-string v2, "AccountUserCenterActivity"

    if-eq p1, v1, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0x3e8

    if-ne p2, p1, :cond_6

    .line 649
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->finish()V

    goto/16 :goto_0

    .line 630
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->crop_uri:Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 631
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    const-wide p2, 0x407f400000000000L    # 500.0

    .line 633
    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/user/utils/FileUtils;->getZoomImage(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mHeadBitmap:Landroid/graphics/Bitmap;

    .line 634
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/user/utils/FileUtils;->bitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p2, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-virtual {p2, p0, p1}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->changeHeadImg(Landroid/app/Activity;Ljava/io/File;)V

    .line 637
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->crop_uri:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 638
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->crop_uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->updateSystem(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PHOTO_CLIP:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    .line 620
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 621
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->isValidFileUri(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 622
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->openCrop(Landroid/net/Uri;)V

    goto :goto_0

    .line 624
    :cond_3
    const-string p0, "Invalid file URI detected: Potential path manipulation attack"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    if-eq p2, p1, :cond_5

    goto :goto_0

    .line 610
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->photo_uri:Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 611
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->openCrop(Landroid/net/Uri;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onClick(Landroid/view/View;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 138
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->head_img_item:I

    if-ne p1, v1, :cond_2

    .line 139
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->permissions:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 140
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->permissions:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 141
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->permissions:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    .line 142
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->setHeadImage()V

    goto/16 :goto_1

    .line 143
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->permissions:[Ljava/lang/String;

    const/16 v0, 0x111

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 147
    :cond_2
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->nickname_item:I

    if-ne p1, v1, :cond_3

    .line 148
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->setNickName()V

    goto :goto_1

    .line 149
    :cond_3
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->sex_item:I

    if-ne p1, v1, :cond_4

    .line 150
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->setSexDialog()V

    goto :goto_1

    .line 151
    :cond_4
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->user_birthday_item:I

    const-string v2, "AccountUserCenterActivity"

    if-ne p1, v1, :cond_5

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->selectDatePickerDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DATE PICK EOOR!:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    :cond_5
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->change_password_item:I

    if-ne p1, v1, :cond_6

    .line 158
    const-class p1, Lcn/nubia/redmagickyi/user/ui/ModifyPasswordActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 159
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 160
    :cond_6
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->change_phone_item:I

    if-ne p1, v0, :cond_7

    .line 162
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->inputVerificationCode()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CHANGE PHOEN EOOR!:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_7
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->logout_item:I

    if-ne p1, v0, :cond_8

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->mPresenter:Lcn/nubia/redmagickyi/user/base/BasePresenter;

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->logoutAccount(Landroid/content/Context;)V

    :cond_8
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 697
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onDestroy()V

    .line 698
    const-string v0, "AccountUserCenterActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->finish()V

    return-void
.end method

.method public onFailture(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 519
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onNetworkConnectFailed()V
    .locals 2

    .line 514
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 525
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    if-eqz p2, :cond_3

    const/16 p2, 0x111

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 529
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget v0, p3, p2

    if-eqz v0, :cond_1

    .line 531
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->showPermissionDialog()V

    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 535
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->setHeadImage()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTokenInvalidate()V
    .locals 0

    .line 509
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->ReLoginDialog(Landroid/content/Context;)V

    return-void
.end method

.method protected setContentLayoutRes()I
    .locals 0

    .line 86
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_account_center_layout:I

    return p0
.end method

.method public showLoadingView()V
    .locals 0

    .line 499
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->showLoadingDialog()V

    return-void
.end method
