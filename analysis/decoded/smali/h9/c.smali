.class public final Lh9/c;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lh9/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh9/c;

    invoke-direct {v0}, Lh9/c;-><init>()V

    sput-object v0, Lh9/c;->c:Lh9/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;

    invoke-direct {p0, v0}, Lh9/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method
