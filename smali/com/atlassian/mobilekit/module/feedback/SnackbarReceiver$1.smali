.class Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1;
.super Ljava/lang/Object;
.source "SnackbarReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private numOfRetries:I

.field final synthetic this$0:Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;


# direct methods
.method constructor <init>(Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1;->this$0:Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1;->this$0:Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;

    invoke-static {v0}, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;->access$000(Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;)Lcom/atlassian/mobilekit/module/core/UiInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/atlassian/mobilekit/module/core/UiInfo;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1;->this$0:Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;

    invoke-static {v1}, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;->access$000(Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;)Lcom/atlassian/mobilekit/module/core/UiInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/atlassian/mobilekit/module/core/UiInfo;->isAppVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    sget-object v0, Lcom/atlassian/mobilekit/module/feedback/commands/Result;->FAIL:Lcom/atlassian/mobilekit/module/feedback/commands/Result;

    invoke-static {v0}, Lcom/atlassian/mobilekit/module/feedback/FeedbackModule;->notifySendCompleted(Lcom/atlassian/mobilekit/module/feedback/commands/Result;)V

    return-void

    :cond_0
    if-nez v0, :cond_2

    .line 72
    iget v0, p0, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1;->numOfRetries:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 73
    iput v0, p0, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1;->numOfRetries:I

    .line 74
    iget-object v0, p0, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1;->this$0:Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;

    invoke-static {v0}, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;->access$100(Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;)Lcom/atlassian/mobilekit/module/core/UiNotifier;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-interface {v0, p0, v1}, Lcom/atlassian/mobilekit/module/core/UiNotifier;->postDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/atlassian/mobilekit/module/feedback/commands/Result;->FAIL:Lcom/atlassian/mobilekit/module/feedback/commands/Result;

    invoke-static {v0}, Lcom/atlassian/mobilekit/module/feedback/FeedbackModule;->notifySendCompleted(Lcom/atlassian/mobilekit/module/feedback/commands/Result;)V

    :goto_0
    return-void

    .line 82
    :cond_2
    sget-object v1, Lcom/atlassian/mobilekit/module/feedback/commands/Result;->FAIL:Lcom/atlassian/mobilekit/module/feedback/commands/Result;

    invoke-static {v1}, Lcom/atlassian/mobilekit/module/feedback/FeedbackModule;->notifySendCompleted(Lcom/atlassian/mobilekit/module/feedback/commands/Result;)V

    .line 84
    sget v1, Lcom/atlassian/mobilekit/module/feedback/R$string;->mk_fb_feedback_failed:I

    invoke-static {v0, v1}, Lcom/atlassian/mobilekit/module/feedback/SnackbarBuilder;->build(Landroid/app/Activity;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/atlassian/mobilekit/module/feedback/SnackbarCallback;

    invoke-direct {v2}, Lcom/atlassian/mobilekit/module/feedback/SnackbarCallback;-><init>()V

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 87
    sget v3, Lcom/atlassian/mobilekit/module/feedback/R$string;->mk_fb_retry:I

    new-instance v4, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1$1;-><init>(Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver$1;Lcom/google/android/material/snackbar/Snackbar;Lcom/atlassian/mobilekit/module/feedback/SnackbarCallback;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 102
    invoke-static {}, Lcom/atlassian/mobilekit/module/feedback/FeedbackModule;->notificationStarted()V

    .line 103
    invoke-static {v0}, Lcom/atlassian/mobilekit/module/feedback/SnackbarReceiver;->access$500(Landroid/app/Activity;)V

    .line 105
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
