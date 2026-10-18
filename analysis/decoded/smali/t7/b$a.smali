.class public final Lt7/b$a;
.super Ljava/lang/Object;
.source "GlideImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lt7/b$a;

.field public static final b:Lfd/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "Lt7/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt7/b$a;

    invoke-direct {v0}, Lt7/b$a;-><init>()V

    sput-object v0, Lt7/b$a;->a:Lt7/b$a;

    sget-object v0, Lt7/b$a$a;->h:Lt7/b$a$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lt7/b$a;->b:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lt7/b;
    .locals 1

    sget-object v0, Lt7/b$a;->b:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/b;

    return-object v0
.end method
