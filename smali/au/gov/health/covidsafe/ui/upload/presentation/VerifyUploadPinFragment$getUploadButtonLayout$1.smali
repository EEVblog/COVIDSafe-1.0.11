.class final Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment$getUploadButtonLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VerifyUploadPinFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;->getUploadButtonLayout()Lau/gov/health/covidsafe/ui/UploadButtonLayout$ContinueLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;


# direct methods
.method constructor <init>(Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;)V
    .locals 0

    iput-object p1, p0, Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment$getUploadButtonLayout$1;->this$0:Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment$getUploadButtonLayout$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 56
    iget-object v0, p0, Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment$getUploadButtonLayout$1;->this$0:Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;

    invoke-static {v0}, Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;->access$getPresenter$p(Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;)Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinPresenter;

    move-result-object v0

    iget-object v1, p0, Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment$getUploadButtonLayout$1;->this$0:Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;

    invoke-virtual {v1}, Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinFragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v2, "requireView()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lau/gov/health/covidsafe/R$id;->pin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lau/gov/health/covidsafe/ui/view/PinInputView;

    invoke-virtual {v1}, Lau/gov/health/covidsafe/ui/view/PinInputView;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/gov/health/covidsafe/ui/upload/presentation/VerifyUploadPinPresenter;->uploadData$app_release(Ljava/lang/String;)V

    return-void
.end method
