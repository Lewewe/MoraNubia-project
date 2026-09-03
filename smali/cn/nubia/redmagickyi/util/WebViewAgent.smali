.class public Lcn/nubia/redmagickyi/util/WebViewAgent;
.super Ljava/lang/Object;
.source "WebViewAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final CSS_WHITE_FONT:Ljava/lang/String; = "p{color:#FFFFFF;}"

.field private static final HTML:Ljava/lang/String; = "<html><head></head><body style=\'margin:0;padding:0\'>%s</body></html>"


# instance fields
.field private final CSS:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private errorView:Landroid/view/View;

.field private forceWhiteFont:Z

.field private loadOnlineUrlWithBrowser:Z

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "<style type=\"text/css\">\n    * {\n        -webkit-tap-highlight-color: rgba(255, 255, 255, 0);\n        -webkit-focus-ring-color: rgba(0, 0, 0, 0);\n        -webkit-touch-callout: none;\n        -webkit-user-select: none;\n        -khtml-user-select: none;\n        -moz-user-select: none;\n        -ms-user-select: none;\n        user-select: none;\n    }\np{color:#FFFFFF;}</style>"

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->CSS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->forceWhiteFont:Z

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadOnlineUrlWithBrowser:Z

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    .line 60
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->errorView:Landroid/view/View;

    .line 61
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/WebViewAgent;)Landroid/webkit/WebView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/WebViewAgent;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->errorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/WebViewAgent;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/util/WebViewAgent;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/util/WebViewAgent;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadOnlineUrlWithBrowser:Z

    return p0
.end method

.method private initView()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 132
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    .line 133
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 137
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 138
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 141
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;-><init>(Lcn/nubia/redmagickyi/util/WebViewAgent;)V

    .line 143
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 147
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 149
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 152
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcn/nubia/redmagickyi/util/WebViewAgent$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/util/WebViewAgent$2;-><init>(Lcn/nubia/redmagickyi/util/WebViewAgent;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 166
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcn/nubia/redmagickyi/util/WebViewAgent$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/util/WebViewAgent$3;-><init>(Lcn/nubia/redmagickyi/util/WebViewAgent;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->errorView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 175
    new-instance v2, Lcn/nubia/redmagickyi/util/WebViewAgent$4;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/util/WebViewAgent$4;-><init>(Lcn/nubia/redmagickyi/util/WebViewAgent;Lcn/nubia/redmagickyi/util/WebViewAgent$MyWebViewClient;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private injectCss(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 100
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->forceWhiteFont:Z

    if-nez p0, :cond_0

    .line 101
    const-string p0, "p{color:#FFFFFF;}"

    const-string v0, ""

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 103
    :cond_0
    const-string p0, "</head>"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<head>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static prepareWebViewProcess(Landroid/app/Activity;)V
    .locals 2

    .line 66
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/util/WebViewAgent$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/util/WebViewAgent$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadData(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 7

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->data:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const-string v0, "<html><head></head><body style=\'margin:0;padding:0\'>%s</body></html>"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 91
    :cond_0
    const-string v0, "\n"

    const-string v1, ""

    const-string v2, "<style type=\"text/css\">\n    * {\n        -webkit-tap-highlight-color: rgba(255, 255, 255, 0);\n        -webkit-focus-ring-color: rgba(0, 0, 0, 0);\n        -webkit-touch-callout: none;\n        -webkit-user-select: none;\n        -khtml-user-select: none;\n        -moz-user-select: none;\n        -ms-user-select: none;\n        user-select: none;\n    }\np{color:#FFFFFF;}</style>"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->injectCss(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    const-string v2, "http://"

    const-string v4, "text/html"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->url:Ljava/lang/String;

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setForceWhiteFont(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->forceWhiteFont:Z

    return-void
.end method

.method public setLoadOnlineUrlWithBrowser(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadOnlineUrlWithBrowser:Z

    return-void
.end method
