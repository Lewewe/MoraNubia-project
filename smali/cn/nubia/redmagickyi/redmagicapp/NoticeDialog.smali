.class public Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "NoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;
    }
.end annotation


# instance fields
.field private container:Landroid/widget/FrameLayout;

.field private imgBigPicture:Landroid/widget/ImageView;

.field private imgCloseIcon:Landroid/widget/ImageView;

.field private noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

.field private onEventListener:Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;

.field private tvDate:Landroid/widget/TextView;

.field private tvEnter:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

.field private webviewContent:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/network/bean/NoticeBean;Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 46
    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->onEventListener:Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;

    .line 48
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 58
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->initData()V

    return-void
.end method

.method private convertDate(J)Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->notice_dialog_layout_date_format:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 166
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initData()V
    .locals 6

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcn/nubia/redmagickyi/main/R$layout;->layout_notice_notice:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->img_layout_notice_big_picture:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->imgBigPicture:Landroid/widget/ImageView;

    .line 95
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 96
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->tv_layout_notice_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvTitle:Landroid/widget/TextView;

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 99
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->tv_layout_notice_date:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvDate:Landroid/widget/TextView;

    .line 100
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->webView_layout_notice_content:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webviewContent:Landroid/webkit/WebView;

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcn/nubia/redmagickyi/util/WebViewAgent;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webviewContent:Landroid/webkit/WebView;

    invoke-direct {v0, v3, v1}, Lcn/nubia/redmagickyi/util/WebViewAgent;-><init>(Landroid/webkit/WebView;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    .line 104
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/WebViewAgent;->setForceWhiteFont(Z)V

    goto/16 :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcn/nubia/redmagickyi/main/R$layout;->layout_notice_activity:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->img_layout_activity_big_picture:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->imgBigPicture:Landroid/widget/ImageView;

    .line 78
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getThumbPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 79
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->tv_layout_activity_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvTitle:Landroid/widget/TextView;

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->tv_layout_activity_date:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvDate:Landroid/widget/TextView;

    .line 82
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->tv_layout_activity_enter:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvEnter:Landroid/widget/TextView;

    .line 83
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvEnter:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 85
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvEnter:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->webView_layout_activity_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webviewContent:Landroid/webkit/WebView;

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    if-nez v0, :cond_3

    .line 88
    new-instance v0, Lcn/nubia/redmagickyi/util/WebViewAgent;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webviewContent:Landroid/webkit/WebView;

    invoke-direct {v0, v2, v1}, Lcn/nubia/redmagickyi/util/WebViewAgent;-><init>(Landroid/webkit/WebView;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    .line 90
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webviewContent:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getBegin()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->convertDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getEnd()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->convertDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadData(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->onEventListener:Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;->onDismiss()V

    .line 154
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    if-eqz p0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->destroy()V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 130
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 63
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_notice:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 0

    .line 68
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->notice_container:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->container:Landroid/widget/FrameLayout;

    .line 69
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->imgCloseIcon:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPress()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvEnter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->imgBigPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webviewContent:Landroid/webkit/WebView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return v2

    :cond_0
    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 117
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-ne p1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->onBackPress()Z

    move-result p1

    if-nez p1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->dismiss()V

    goto :goto_0

    .line 121
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_layout_activity_enter:I

    if-ne p1, v0, :cond_1

    .line 122
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->tvEnter:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->imgBigPicture:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->webviewContent:Landroid/webkit/WebView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
