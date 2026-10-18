.class public final Lh9/b0;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/myshoes/MyShoesActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lh9/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh9/b0;

    invoke-direct {v0}, Lh9/b0;-><init>()V

    sput-object v0, Lh9/b0;->c:Lh9/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;

    invoke-direct {p0, v0}, Lh9/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method
