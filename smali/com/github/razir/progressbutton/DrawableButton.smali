.class public final Lcom/github/razir/progressbutton/DrawableButton;
.super Ljava/lang/Object;
.source "DrawableButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/razir/progressbutton/DrawableButton$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/github/razir/progressbutton/DrawableButton;",
        "",
        "()V",
        "Companion",
        "progressbutton_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/github/razir/progressbutton/DrawableButton$Companion;

.field public static final DEFAULT:I = -0x1

.field public static final GRAVITY_CENTER:I = 0x2

.field public static final GRAVITY_TEXT_END:I = 0x1

.field public static final GRAVITY_TEXT_START:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/razir/progressbutton/DrawableButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/razir/progressbutton/DrawableButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/razir/progressbutton/DrawableButton;->Companion:Lcom/github/razir/progressbutton/DrawableButton$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
