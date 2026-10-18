.class public final Lea/a;
.super Ljava/lang/Object;
.source "AdaptKitDetectedMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lea/a$a;
    }
.end annotation


# instance fields
.field public final a:Lea/e;

.field public final b:[Lea/a$a;


# direct methods
.method public varargs constructor <init>(Lea/e;[Lea/a$a;)V
    .locals 1

    const-string v0, "reasonForNotDetected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lea/a;->a:Lea/e;

    .line 3
    iput-object p2, p0, Lea/a;->b:[Lea/a$a;

    return-void
.end method
