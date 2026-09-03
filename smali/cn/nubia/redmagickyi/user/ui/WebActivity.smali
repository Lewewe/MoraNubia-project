.class public Lcn/nubia/redmagickyi/user/ui/WebActivity;
.super Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;
.source "WebActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/view/WebIView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/ui/WebActivity$MyWebViewDownLoadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/user/base/BaseMvpActivity<",
        "Lcn/nubia/redmagickyi/user/view/WebIView;",
        "Lcn/nubia/redmagickyi/user/presenter/WebIPresenter;",
        ">;",
        "Lcn/nubia/redmagickyi/user/view/WebIView;"
    }
.end annotation


# static fields
.field public static final LOAD_TITLE:Ljava/lang/String; = "load_title"

.field public static final LOAD_URL:Ljava/lang/String; = "load_url"

.field private static final PRODUCT_NEW_DETAIL:Ljava/lang/String; = "version="

.field private static final REQUEST_CODE_ALBUM:I = 0x1

.field private static final REQUEST_LOGIN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebActivity"

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private extraHeaders:Ljava/util/Map;

.field private isLoadingViewShowing:Z

.field private mBtnRefresh:Landroid/widget/Button;

.field private mLayoutLoadFailed:Landroid/widget/LinearLayout;

.field private mTitle:Ljava/lang/String;

.field private mTitleHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->extraHeaders:Ljava/util/Map;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->isLoadingViewShowing:Z

    .line 217
    new-instance v0, Lcn/nubia/redmagickyi/user/ui/WebActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity$1;-><init>(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 253
    new-instance v0, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity$2;-><init>(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Ljava/util/HashMap;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mTitleHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/user/ui/WebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->chooseAlbumPic()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->isLoadingViewShowing:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/user/ui/WebActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mLayoutLoadFailed:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/user/ui/WebActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->doLogin()V

    return-void
.end method

.method private chooseAlbumPic()V
    .locals 2

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->user_login_please_select_picture:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private clearWebViewResource()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 409
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 412
    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method private doLogin()V
    .locals 2

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/user/ui/NubiaLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 379
    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getZoomDensity()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 200
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    const/16 v1, 0x78

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa0

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf0

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_0

    .line 206
    :cond_1
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    :goto_0
    return-object v0
.end method

.method private initArgs()V
    .locals 5

    .line 179
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "load_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mTitle:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "load_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    .line 181
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    .line 184
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    const-string v1, "version="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "?"

    const-string v3, "#"

    const-string v4, "&version="

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static lunch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-class v1, Lcn/nubia/redmagickyi/user/ui/WebActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string v1, "load_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcn/nubia/redmagickyi/user/base/BasePresenter;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->createPresenter()Lcn/nubia/redmagickyi/user/presenter/WebIPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcn/nubia/redmagickyi/user/presenter/WebIPresenter;
    .locals 0

    .line 151
    new-instance p0, Lcn/nubia/redmagickyi/user/presenter/WebIPresenter;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/presenter/WebIPresenter;-><init>()V

    return-object p0
.end method

.method public finish()V
    .locals 0

    .line 175
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->finish()V

    return-void
.end method

.method public hideLoadingView()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->isLoadingViewShowing:Z

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->hideLoadingDialog()V

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 82
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->initData()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mTitleHashMap:Ljava/util/HashMap;

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->extraHeaders:Ljava/util/Map;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->extraHeaders:Ljava/util/Map;

    const-string v1, "isinapk"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->extraHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected initView()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->SetTitle(Ljava/lang/String;)V

    .line 93
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    .line 94
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 99
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->getZoomDensity()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 112
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/nubia/redmagickyi/user/ui/WebActivity$MyWebViewDownLoadListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/user/ui/WebActivity$MyWebViewDownLoadListener;-><init>(Lcn/nubia/redmagickyi/user/ui/WebActivity;Lcn/nubia/redmagickyi/user/ui/WebActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 116
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_load_failed:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mLayoutLoadFailed:Landroid/widget/LinearLayout;

    .line 117
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_refresh:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mBtnRefresh:Landroid/widget/Button;

    .line 118
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 317
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 321
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_3

    if-eqz v1, :cond_2

    .line 329
    invoke-interface {v1, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 330
    iput-object v3, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 332
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_3

    .line 333
    invoke-interface {v1, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 334
    iput-object v3, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    :cond_3
    if-ne p2, v2, :cond_7

    if-eq p1, v0, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 345
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_0
    move-object p1, v3

    .line 352
    :goto_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_6

    .line 353
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 354
    iput-object v3, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 356
    :cond_6
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_7

    .line 357
    new-array p3, v0, [Landroid/net/Uri;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 358
    iput-object v3, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    :cond_7
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onClick(Landroid/view/View;)V

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_refresh:I

    if-ne p1, v0, :cond_0

    .line 158
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->hideLoadingView()V

    .line 160
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mLayoutLoadFailed:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->mUrl:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->extraHeaders:Ljava/util/Map;

    invoke-virtual {p1, v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->initArgs()V

    .line 170
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 393
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->clearWebViewResource()V

    .line 395
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 397
    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 399
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    .line 400
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 401
    iput-object v1, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 403
    :cond_1
    invoke-super {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->onDestroy()V

    return-void
.end method

.method public onFailture(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onNetworkConnectFailed()V
    .locals 2

    .line 141
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->network_is_invalid:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onTokenInvalidate()V
    .locals 0

    return-void
.end method

.method protected setContentLayoutRes()I
    .locals 0

    .line 77
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_web_layout:I

    return p0
.end method

.method public showLoadingView()V
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/ui/WebActivity;->isLoadingViewShowing:Z

    .line 125
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/WebActivity;->showLoadingDialog()V

    return-void
.end method
